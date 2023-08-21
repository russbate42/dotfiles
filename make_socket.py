import socket as s
import argparse, os

parser = argparse.ArgumentParser(
    prog = 'make_socket',
    description='Simple py script to create a socket file.',
    epilog = 'This can be used to create a socket to bind a persistent '\
    +'tmux session to.')
parser.add_argument('--folder',
    dest='folder',
    help='Folder to place the socket in.',
    type=str,
    default=None)
parser.add_argument('--socket-name',
    dest='socket_name',
    help='Name the socket.',
    default='socket',
    type=str)

args = parser.parse_intermixed_args()
Folder = args.folder
SocketName = args.socket_name

if Folder is None:
    Folder = os.getcwd()
else:
    if not os.path.isdir(Folder):
        raise ValueError('Folder does not exist.')
if Folder[-1] != '/':
    Folder += '/'

sock = s.socket(s.AF_UNIX)
sock.bind('{}{}'.format(Folder, SocketName))
print('\n   Done!\n')
